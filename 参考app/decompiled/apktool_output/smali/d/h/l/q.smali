.class public Ld/h/l/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public a:Ld/h/l/w;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ld/h/l/j;


# direct methods
.method public constructor <init>(Landroid/view/View;Ld/h/l/j;)V
    .locals 0

    iput-object p1, p0, Ld/h/l/q;->b:Landroid/view/View;

    iput-object p2, p0, Ld/h/l/q;->c:Ld/h/l/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/h/l/q;->a:Ld/h/l/w;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    invoke-static {p2, p1}, Ld/h/l/w;->j(Landroid/view/WindowInsets;Landroid/view/View;)Ld/h/l/w;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Ld/h/l/q;->b:Landroid/view/View;

    .line 1
    sget v3, Ld/h/b;->tag_window_insets_animation_callback:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v3, :cond_0

    invoke-interface {v3, v1, p2}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 2
    :cond_0
    iget-object p2, p0, Ld/h/l/q;->a:Ld/h/l/w;

    invoke-virtual {v0, p2}, Ld/h/l/w;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ld/h/l/q;->c:Ld/h/l/j;

    invoke-interface {p2, p1, v0}, Ld/h/l/j;->a(Landroid/view/View;Ld/h/l/w;)Ld/h/l/w;

    move-result-object p1

    invoke-virtual {p1}, Ld/h/l/w;->h()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_1
    iput-object v0, p0, Ld/h/l/q;->a:Ld/h/l/w;

    iget-object p2, p0, Ld/h/l/q;->c:Ld/h/l/j;

    invoke-interface {p2, p1, v0}, Ld/h/l/j;->a(Landroid/view/View;Ld/h/l/w;)Ld/h/l/w;

    move-result-object p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    invoke-virtual {p2}, Ld/h/l/w;->h()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Ld/h/l/p;->Y(Landroid/view/View;)V

    invoke-virtual {p2}, Ld/h/l/w;->h()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
