// 书籍
export class Book {
    constructor(
        public path: string,
        public id: string,
        public name: string,
        public cover: string,
        public author: string,
        public publisher: string,
        public toc: TOC[],
        public spine: Spine,
        public manifest: Manifest
    ) {
        this.id = id
        this.name = name
        this.cover = cover
        this.author = author
        this.publisher = publisher
        this.toc = toc
        this.spine = spine
        this.manifest = manifest
        this.path = path
    }
}

// 目录
export class TOC {
    constructor(public id: string, public text: string, public content: string, public children: TOC[]) {
        this.id = id
        this.text = text
        this.content = content
        this.children = children
    }

}

// 书脊
export class Spine {
constructor(public idref: string) {
    this.idref = idref
}
}

// 资源清单
export class Manifest {
    constructor(public href: string, public id: string, public mediaType: string) {
        this.href = href
        this.id = id
        this.mediaType = mediaType
    }
}