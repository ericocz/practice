import { unzip } from '../zip'

export default class BookParser {
    constructor(private path: string) {
        this.path = path
    }

    async unzip(outDir: string): Promise<boolean> {
        return await unzip(this.path, outDir)
    }
}