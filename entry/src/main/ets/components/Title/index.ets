@Component
export default struct Title {
    @Prop title: string
    build() {
        Text(this.title)
            .width('100%')
            .fontSize(12)
            .fontColor('#666')
            .textOverflow({ overflow: TextOverflow.Ellipsis })
    }
}