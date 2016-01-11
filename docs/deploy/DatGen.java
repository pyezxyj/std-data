import java.io.File;
import java.io.FileOutputStream;
import java.security.Key;
import java.security.Security;

import javax.crypto.Cipher;

public class DatGen {
    public static void main(String[] args) throws Exception {
        if (args != null && args.length == 1) {
            genConfigFile(args[0], "config.dat");
        } else {
            
        }
    }

    public static void genConfigFile(String configstr, String outfilepath)
            throws Exception {
        DESUtil des = new DESUtil();
        byte[] charbyte = des.hexStr2ByteArr(des.encrypt(configstr));
        FileOutputStream fo = new FileOutputStream(new File(outfilepath));
        fo.write(charbyte, 0, charbyte.length);
        fo.flush();
        fo.close();
    }
}

class DESUtil {
    private final static String _DES = "DES";

    private String encodeType = "UTF-8";

    private static String strDefaultKey = "_Hundsun";

    private Cipher encryptCipher = null;

    private Cipher decryptCipher = null;

   
    public DESUtil() throws Exception {
        this(strDefaultKey);
    }

    
    public DESUtil(String strKey, String encode) throws Exception {
        encodeType = encode;
        Security.addProvider(new com.sun.crypto.provider.SunJCE());
        Key key = getKey(strKey.getBytes(encodeType));
        encryptCipher = Cipher.getInstance(_DES);
        encryptCipher.init(Cipher.ENCRYPT_MODE, key);
        decryptCipher = Cipher.getInstance(_DES);
        decryptCipher.init(Cipher.DECRYPT_MODE, key);
    }

   
    public DESUtil(String strKey) throws Exception {
        Security.addProvider(new com.sun.crypto.provider.SunJCE());
        Key key = getKey(strKey.getBytes(encodeType));
        encryptCipher = Cipher.getInstance(_DES);
        encryptCipher.init(Cipher.ENCRYPT_MODE, key);
        decryptCipher = Cipher.getInstance(_DES);
        decryptCipher.init(Cipher.DECRYPT_MODE, key);
    }

    
    public byte[] encrypt(byte[] arrB) throws Exception {
        return encryptCipher.doFinal(arrB);
    }

   
    public byte[] decrypt(byte[] arrB) throws Exception {
        return decryptCipher.doFinal(arrB);
    }

   
    public String encrypt(String strIn) throws Exception {
        return byteArr2HexStr(encrypt(strIn.getBytes(encodeType)));
    }

   
    public String decrypt(String strIn) throws Exception {
        return new String(decrypt(hexStr2ByteArr(strIn)), encodeType);
    }

  
    private Key getKey(byte[] arrBTmp) {
       
        byte[] arrB = new byte[8];

        for (int i = 0; i < arrBTmp.length && i < arrB.length; i++) {
            arrB[i] = arrBTmp[i];
        }
        Key key = new javax.crypto.spec.SecretKeySpec(arrB, _DES);
        return key;
    }

   
    public String byteArr2HexStr(byte[] arrB) throws Exception {
        int iLen = arrB.length;
       
        StringBuffer sb = new StringBuffer(iLen * 2);
        for (int i = 0; i < iLen; i++) {
            int intTmp = arrB[i];
          
            while (intTmp < 0) {
                intTmp = intTmp + 256;
            }
           
            if (intTmp < 16) {
                sb.append("0");
            }
            sb.append(Integer.toString(intTmp, 16));
        }
        return sb.toString().toUpperCase();
    }

   
    public byte[] hexStr2ByteArr(String strIn) throws Exception {
        byte[] arrB = strIn.getBytes(encodeType);
        int iLen = arrB.length;
        byte[] arrOut = new byte[iLen / 2];
        for (int i = 0; i < iLen; i = i + 2) {
            String strTmp = new String(arrB, i, 2, encodeType);
            arrOut[i / 2] = (byte) Integer.parseInt(strTmp, 16);
        }
        return arrOut;
    }

}
