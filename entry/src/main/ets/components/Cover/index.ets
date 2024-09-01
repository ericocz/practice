import { image } from '@kit.ImageKit'

@Component
export default struct Cover {
    @Prop src: image.PixelMap | ResourceStr | DrawableDescriptor
    @Prop coverWidth: Length = '100%'
    @Prop coverHeight: Length = '100%'
    build() {
        Row() {
            Image(this.src)
                .width(this.coverWidth)
                .height(this.coverHeight)
        }
    }
}