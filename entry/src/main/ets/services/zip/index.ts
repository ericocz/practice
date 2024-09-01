import zlib from'@ohos.zlib';
import { BusinessError } from'@ohos.base';

export async function unzip(inFile: string, outFile: string): Promise<boolean> {
    try {
        await zlib.decompressFile(inFile, outFile)
        return true
    } catch (err) {
        console.log(`decompressFile failed, errCode:${err.code}, errMessage:${err.message}`)
        return false
    }
}