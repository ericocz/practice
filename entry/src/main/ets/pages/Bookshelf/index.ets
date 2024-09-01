import Cover from '../../components/Cover'
import Title from '../../components/Title'
import { Book } from '../../models/Book'
import BookParser from '../../services/book-parser'

@Entry
@Component
struct Index {
    @State books: Book[] = []

    handleBookTap(book: Book) {

    }

    unzip() {
        const parser = new BookParser('../../../resources/rawfile/月亮与六便士.epub')
        parser.unzip('../../../resources/rawfile')
            .then((res) => console.log(`unzip result ${res}`))
    }

    build() {
        RelativeContainer() {
            Button('解压文件')
                .onClick(() => {
                    console.log('touch button')
                    this.unzip()
                })
            Flex({ direction: FlexDirection.Row }) {
                ForEach(this.books, (book: Book) => {
                    Flex({ direction: FlexDirection.Column }) {
                        Cover({ src: book.cover })
                        Title({ title: book.name })
                    }
                    .gesture(
                      TapGesture()
                          .onAction(() => {
                              this.handleBookTap(book)
                          })
                    )
                })
            }
        }
        .height('100%')
        .width('100%')
    }
}