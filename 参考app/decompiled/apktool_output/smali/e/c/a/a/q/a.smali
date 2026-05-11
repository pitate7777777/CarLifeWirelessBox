.class public Le/c/a/a/q/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Le/c/a/a/f0/j;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Landroid/graphics/drawable/LayerDrawable;

.field public s:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Le/c/a/a/f0/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/c/a/a/q/a;->n:Z

    iput-boolean v0, p0, Le/c/a/a/q/a;->o:Z

    iput-boolean v0, p0, Le/c/a/a/q/a;->p:Z

    iput-object p1, p0, Le/c/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Le/c/a/a/q/a;->b:Le/c/a/a/f0/j;

    return-void
.end method


# virtual methods
.method public a()Le/c/a/a/f0/n;
    .locals 3

    iget-object v0, p0, Le/c/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Le/c/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Le/c/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    check-cast v0, Le/c/a/a/f0/n;

    return-object v0

    :cond_0
    iget-object v0, p0, Le/c/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Le/c/a/a/f0/g;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/c/a/a/q/a;->c(Z)Le/c/a/a/f0/g;

    move-result-object v0

    return-object v0
.end method

.method public final c(Z)Le/c/a/a/f0/g;
    .locals 2

    iget-object v0, p0, Le/c/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Le/c/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Le/c/a/a/f0/g;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Le/c/a/a/f0/g;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/c/a/a/q/a;->c(Z)Le/c/a/a/f0/g;

    move-result-object v0

    return-object v0
.end method

.method public e(Le/c/a/a/f0/j;)V
    .locals 2

    iput-object p1, p0, Le/c/a/a/q/a;->b:Le/c/a/a/f0/j;

    .line 1
    invoke-virtual {p0}, Le/c/a/a/q/a;->b()Le/c/a/a/f0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/c/a/a/q/a;->b()Le/c/a/a/f0/g;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iput-object p1, v1, Le/c/a/a/f0/g$b;->a:Le/c/a/a/f0/j;

    invoke-virtual {v0}, Le/c/a/a/f0/g;->invalidateSelf()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/c/a/a/q/a;->d()Le/c/a/a/f0/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/c/a/a/q/a;->d()Le/c/a/a/f0/g;

    move-result-object v0

    .line 4
    iget-object v1, v0, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iput-object p1, v1, Le/c/a/a/f0/g$b;->a:Le/c/a/a/f0/j;

    invoke-virtual {v0}, Le/c/a/a/f0/g;->invalidateSelf()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/c/a/a/q/a;->a()Le/c/a/a/f0/n;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/c/a/a/q/a;->a()Le/c/a/a/f0/n;

    move-result-object v0

    invoke-interface {v0, p1}, Le/c/a/a/f0/n;->setShapeAppearanceModel(Le/c/a/a/f0/j;)V

    :cond_2
    return-void
.end method

.method public final f(II)V
    .locals 7

    iget-object v0, p0, Le/c/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Ld/h/l/p;->z(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Le/c/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Le/c/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 1
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 2
    iget-object v3, p0, Le/c/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Le/c/a/a/q/a;->e:I

    iget v5, p0, Le/c/a/a/q/a;->f:I

    iput p2, p0, Le/c/a/a/q/a;->f:I

    iput p1, p0, Le/c/a/a/q/a;->e:I

    iget-boolean v6, p0, Le/c/a/a/q/a;->o:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Le/c/a/a/q/a;->g()V

    :cond_0
    iget-object v6, p0, Le/c/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    add-int/2addr v1, p1

    sub-int/2addr v1, v4

    add-int/2addr v3, p2

    sub-int/2addr v3, v5

    .line 3
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final g()V
    .locals 12

    iget-object v0, p0, Le/c/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 1
    new-instance v1, Le/c/a/a/f0/g;

    iget-object v2, p0, Le/c/a/a/q/a;->b:Le/c/a/a/f0/j;

    invoke-direct {v1, v2}, Le/c/a/a/f0/g;-><init>(Le/c/a/a/f0/j;)V

    iget-object v2, p0, Le/c/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/c/a/a/f0/g;->o(Landroid/content/Context;)V

    iget-object v2, p0, Le/c/a/a/q/a;->j:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 3
    iget-object v2, p0, Le/c/a/a/q/a;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 5
    :cond_0
    iget v2, p0, Le/c/a/a/q/a;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Le/c/a/a/q/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2, v3}, Le/c/a/a/f0/g;->t(FLandroid/content/res/ColorStateList;)V

    new-instance v2, Le/c/a/a/f0/g;

    iget-object v3, p0, Le/c/a/a/q/a;->b:Le/c/a/a/f0/j;

    invoke-direct {v2, v3}, Le/c/a/a/f0/g;-><init>(Le/c/a/a/f0/j;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Le/c/a/a/f0/g;->setTint(I)V

    iget v4, p0, Le/c/a/a/q/a;->h:I

    int-to-float v4, v4

    iget-boolean v5, p0, Le/c/a/a/q/a;->n:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Le/c/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    sget v6, Le/c/a/a/b;->colorSurface:I

    invoke-static {v5, v6}, Ld/b/k/m$i;->W(Landroid/view/View;I)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2, v4, v5}, Le/c/a/a/f0/g;->s(FI)V

    new-instance v4, Le/c/a/a/f0/g;

    iget-object v5, p0, Le/c/a/a/q/a;->b:Le/c/a/a/f0/j;

    invoke-direct {v4, v5}, Le/c/a/a/f0/g;-><init>(Le/c/a/a/f0/j;)V

    iput-object v4, p0, Le/c/a/a/q/a;->m:Landroid/graphics/drawable/Drawable;

    const/4 v5, -0x1

    .line 6
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 7
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Le/c/a/a/q/a;->l:Landroid/content/res/ColorStateList;

    invoke-static {v5}, Le/c/a/a/d0/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v5

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object v1, v6, v2

    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 8
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget v8, p0, Le/c/a/a/q/a;->c:I

    iget v9, p0, Le/c/a/a/q/a;->e:I

    iget v10, p0, Le/c/a/a/q/a;->d:I

    iget v11, p0, Le/c/a/a/q/a;->f:I

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 9
    iget-object v2, p0, Le/c/a/a/q/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Le/c/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 10
    invoke-virtual {v0, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Le/c/a/a/q/a;->b()Le/c/a/a/f0/g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Le/c/a/a/q/a;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Le/c/a/a/f0/g;->p(F)V

    :cond_2
    return-void
.end method

.method public final h()V
    .locals 4

    invoke-virtual {p0}, Le/c/a/a/q/a;->b()Le/c/a/a/f0/g;

    move-result-object v0

    invoke-virtual {p0}, Le/c/a/a/q/a;->d()Le/c/a/a/f0/g;

    move-result-object v1

    if-eqz v0, :cond_1

    iget v2, p0, Le/c/a/a/q/a;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Le/c/a/a/q/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Le/c/a/a/f0/g;->t(FLandroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_1

    iget v0, p0, Le/c/a/a/q/a;->h:I

    int-to-float v0, v0

    iget-boolean v2, p0, Le/c/a/a/q/a;->n:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Le/c/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    sget v3, Le/c/a/a/b;->colorSurface:I

    invoke-static {v2, v3}, Ld/b/k/m$i;->W(Landroid/view/View;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2}, Le/c/a/a/f0/g;->s(FI)V

    :cond_1
    return-void
.end method
