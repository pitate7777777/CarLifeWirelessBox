.class public Ld/h/l/w$g;
.super Ld/h/l/w$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public n:Ld/h/f/b;


# direct methods
.method public constructor <init>(Ld/h/l/w;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/h/l/w$f;-><init>(Ld/h/l/w;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/h/l/w$g;->n:Ld/h/f/b;

    return-void
.end method


# virtual methods
.method public b()Ld/h/l/w;
    .locals 1

    iget-object v0, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ld/h/l/w;->i(Landroid/view/WindowInsets;)Ld/h/l/w;

    move-result-object v0

    return-object v0
.end method

.method public c()Ld/h/l/w;
    .locals 1

    iget-object v0, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ld/h/l/w;->i(Landroid/view/WindowInsets;)Ld/h/l/w;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ld/h/f/b;
    .locals 4

    iget-object v0, p0, Ld/h/l/w$g;->n:Ld/h/f/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ld/h/f/b;->a(IIII)Ld/h/f/b;

    move-result-object v0

    iput-object v0, p0, Ld/h/l/w$g;->n:Ld/h/f/b;

    :cond_0
    iget-object v0, p0, Ld/h/l/w$g;->n:Ld/h/f/b;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public n(Ld/h/f/b;)V
    .locals 0

    iput-object p1, p0, Ld/h/l/w$g;->n:Ld/h/f/b;

    return-void
.end method
