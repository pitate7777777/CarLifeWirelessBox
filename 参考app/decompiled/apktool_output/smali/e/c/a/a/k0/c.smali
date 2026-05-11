.class public Le/c/a/a/k0/c;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""


# instance fields
.field public final x:Ljava/lang/Runnable;

.field public y:I

.field public z:Le/c/a/a/f0/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Le/c/a/a/k0/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Le/c/a/a/h;->material_radial_view_group:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1
    new-instance v0, Le/c/a/a/f0/g;

    invoke-direct {v0}, Le/c/a/a/f0/g;-><init>()V

    iput-object v0, p0, Le/c/a/a/k0/c;->z:Le/c/a/a/f0/g;

    new-instance v1, Le/c/a/a/f0/h;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Le/c/a/a/f0/h;-><init>(F)V

    .line 2
    iget-object v2, v0, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iget-object v2, v2, Le/c/a/a/f0/g$b;->a:Le/c/a/a/f0/j;

    if-eqz v2, :cond_0

    .line 3
    new-instance v3, Le/c/a/a/f0/j$b;

    invoke-direct {v3, v2}, Le/c/a/a/f0/j$b;-><init>(Le/c/a/a/f0/j;)V

    .line 4
    iput-object v1, v3, Le/c/a/a/f0/j$b;->e:Le/c/a/a/f0/c;

    .line 5
    iput-object v1, v3, Le/c/a/a/f0/j$b;->f:Le/c/a/a/f0/c;

    .line 6
    iput-object v1, v3, Le/c/a/a/f0/j$b;->g:Le/c/a/a/f0/c;

    .line 7
    iput-object v1, v3, Le/c/a/a/f0/j$b;->h:Le/c/a/a/f0/c;

    .line 8
    invoke-virtual {v3}, Le/c/a/a/f0/j$b;->a()Le/c/a/a/f0/j;

    move-result-object v1

    .line 9
    iget-object v2, v0, Le/c/a/a/f0/g;->e:Le/c/a/a/f0/g$b;

    iput-object v1, v2, Le/c/a/a/f0/g$b;->a:Le/c/a/a/f0/j;

    invoke-virtual {v0}, Le/c/a/a/f0/g;->invalidateSelf()V

    .line 10
    iget-object v0, p0, Le/c/a/a/k0/c;->z:Le/c/a/a/f0/g;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/c/a/a/f0/g;->q(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Le/c/a/a/k0/c;->z:Le/c/a/a/f0/g;

    .line 11
    invoke-static {p0, v0}, Ld/h/l/p;->d0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Le/c/a/a/k;->RadialViewGroup:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Le/c/a/a/k;->RadialViewGroup_materialCircleRadius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Le/c/a/a/k0/c;->y:I

    new-instance p2, Le/c/a/a/k0/c$a;

    invoke-direct {p2, p0}, Le/c/a/a/k0/c$a;-><init>(Le/c/a/a/k0/c;)V

    iput-object p2, p0, Le/c/a/a/k0/c;->x:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    invoke-static {}, Ld/h/l/p;->i()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Le/c/a/a/k0/c;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Le/c/a/a/k0/c;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public k()V
    .locals 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "skip"

    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v3, Ld/f/c/d;

    invoke-direct {v3}, Ld/f/c/d;-><init>()V

    invoke-virtual {v3, p0}, Ld/f/c/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v6, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    sget v9, Le/c/a/a/f;->circle_center:I

    if-eq v8, v9, :cond_4

    .line 3
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Le/c/a/a/f;->circle_center:I

    iget v9, p0, Le/c/a/a/k0/c;->y:I

    .line 5
    iget-object v10, v3, Ld/f/c/d;->c:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v3, Ld/f/c/d;->c:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Ld/f/c/d$a;

    invoke-direct {v12}, Ld/f/c/d$a;-><init>()V

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v10, v3, Ld/f/c/d;->c:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/f/c/d$a;

    .line 6
    iget-object v7, v7, Ld/f/c/d$a;->d:Ld/f/c/d$b;

    iput v8, v7, Ld/f/c/d$b;->x:I

    iput v9, v7, Ld/f/c/d$b;->y:I

    iput v6, v7, Ld/f/c/d$b;->z:F

    const/high16 v7, 0x43b40000    # 360.0f

    sub-int v8, v0, v4

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v6

    move v6, v7

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_5
    invoke-virtual {v3, p0, v2}, Ld/f/c/d;->b(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Ld/f/c/d;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Le/c/a/a/k0/c;->k()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/c/a/a/k0/c;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Le/c/a/a/k0/c;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/k0/c;->z:Le/c/a/a/f0/g;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/f0/g;->q(Landroid/content/res/ColorStateList;)V

    return-void
.end method
