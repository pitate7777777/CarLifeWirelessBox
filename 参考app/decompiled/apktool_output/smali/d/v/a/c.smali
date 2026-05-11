.class public Ld/v/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/h/l/j;


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final synthetic b:Ld/v/a/b;


# direct methods
.method public constructor <init>(Ld/v/a/b;)V
    .locals 0

    iput-object p1, p0, Ld/v/a/c;->b:Ld/v/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ld/v/a/c;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld/h/l/w;)Ld/h/l/w;
    .locals 5

    invoke-static {p1, p2}, Ld/h/l/p;->P(Landroid/view/View;Ld/h/l/w;)Ld/h/l/w;

    move-result-object p1

    invoke-virtual {p1}, Ld/h/l/w;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    iget-object p2, p0, Ld/v/a/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Ld/h/l/w;->b()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Ld/h/l/w;->d()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Ld/h/l/w;->c()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Ld/h/l/w;->a()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    iget-object v1, p0, Ld/v/a/c;->b:Ld/v/a/b;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Ld/v/a/c;->b:Ld/v/a/b;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Ld/h/l/p;->f(Landroid/view/View;Ld/h/l/w;)Ld/h/l/w;

    move-result-object v2

    invoke-virtual {v2}, Ld/h/l/w;->b()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Ld/h/l/w;->d()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Ld/h/l/w;->c()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Ld/h/l/w;->a()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p2}, Ld/h/l/w;->g(IIII)Ld/h/l/w;

    move-result-object p1

    return-object p1
.end method
