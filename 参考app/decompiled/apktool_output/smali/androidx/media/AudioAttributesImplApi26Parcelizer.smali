.class public Landroidx/media/AudioAttributesImplApi26Parcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld/u/b;)Landroidx/media/AudioAttributesImplApi26;
    .locals 3

    new-instance v0, Landroidx/media/AudioAttributesImplApi26;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi26;-><init>()V

    iget-object v1, v0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld/u/b;->j(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    iget v1, v0, Landroidx/media/AudioAttributesImplApi21;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ld/u/b;->i(II)I

    move-result p0

    iput p0, v0, Landroidx/media/AudioAttributesImplApi21;->b:I

    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesImplApi26;Ld/u/b;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ld/u/b;->n(Landroid/os/Parcelable;I)V

    iget p0, p0, Landroidx/media/AudioAttributesImplApi21;->b:I

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Ld/u/b;->m(II)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method
