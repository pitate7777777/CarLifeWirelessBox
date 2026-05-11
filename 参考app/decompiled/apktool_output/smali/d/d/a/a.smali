.class public Ld/d/a/a;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final g:Ld/d/a/d;


# instance fields
.field public e:Z

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/d/a/b;

    invoke-direct {v0}, Ld/d/a/b;-><init>()V

    sput-object v0, Ld/d/a/a;->g:Ld/d/a/d;

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    sget-object v0, Ld/d/a/a;->g:Ld/d/a/d;

    check-cast v0, Ld/d/a/b;

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getCardElevation()F
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    sget-object v0, Ld/d/a/a;->g:Ld/d/a/d;

    check-cast v0, Ld/d/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/d/a/b;->b(Ld/d/a/c;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, Ld/d/a/a;->f:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    sget-object v0, Ld/d/a/a;->g:Ld/d/a/d;

    check-cast v0, Ld/d/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/d/a/b;->c(Ld/d/a/c;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Ld/d/a/a;->e:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2

    sget-object v0, Ld/d/a/a;->g:Ld/d/a/d;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    check-cast v0, Ld/d/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ld/d/a/b;->d(Ld/d/a/c;Landroid/content/res/ColorStateList;)V

    throw v1
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, Ld/d/a/a;->g:Ld/d/a/d;

    check-cast v0, Ld/d/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ld/d/a/b;->d(Ld/d/a/c;Landroid/content/res/ColorStateList;)V

    throw v1
.end method

.method public setCardElevation(F)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    sget-object v0, Ld/d/a/a;->g:Ld/d/a/d;

    check-cast v0, Ld/d/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ld/d/a/b;->e(Ld/d/a/c;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    iget-boolean v0, p0, Ld/d/a/a;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Ld/d/a/a;->f:Z

    sget-object p1, Ld/d/a/a;->g:Ld/d/a/d;

    check-cast p1, Ld/d/a/b;

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setRadius(F)V
    .locals 0

    sget-object p1, Ld/d/a/a;->g:Ld/d/a/d;

    check-cast p1, Ld/d/a/b;

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Ld/d/a/a;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Ld/d/a/a;->e:Z

    sget-object p1, Ld/d/a/a;->g:Ld/d/a/d;

    check-cast p1, Ld/d/a/b;

    const/4 p1, 0x0

    .line 1
    throw p1
.end method
