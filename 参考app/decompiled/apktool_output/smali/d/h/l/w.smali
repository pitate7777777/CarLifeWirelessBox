.class public Ld/h/l/w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/h/l/w$a;,
        Ld/h/l/w$d;,
        Ld/h/l/w$c;,
        Ld/h/l/w$b;,
        Ld/h/l/w$e;,
        Ld/h/l/w$j;,
        Ld/h/l/w$i;,
        Ld/h/l/w$h;,
        Ld/h/l/w$g;,
        Ld/h/l/w$f;,
        Ld/h/l/w$k;
    }
.end annotation


# static fields
.field public static final b:Ld/h/l/w;


# instance fields
.field public final a:Ld/h/l/w$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Ld/h/l/w$j;->r:Ld/h/l/w;

    goto :goto_0

    :cond_0
    sget-object v0, Ld/h/l/w$k;->b:Ld/h/l/w;

    :goto_0
    sput-object v0, Ld/h/l/w;->b:Ld/h/l/w;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ld/h/l/w$j;

    invoke-direct {v0, p0, p1}, Ld/h/l/w$j;-><init>(Ld/h/l/w;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Ld/h/l/w$i;

    invoke-direct {v0, p0, p1}, Ld/h/l/w$i;-><init>(Ld/h/l/w;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, Ld/h/l/w$h;

    invoke-direct {v0, p0, p1}, Ld/h/l/w$h;-><init>(Ld/h/l/w;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ld/h/l/w$g;

    invoke-direct {v0, p0, p1}, Ld/h/l/w$g;-><init>(Ld/h/l/w;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Ld/h/l/w;->a:Ld/h/l/w$k;

    return-void
.end method

.method public constructor <init>(Ld/h/l/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ld/h/l/w$k;

    invoke-direct {p1, p0}, Ld/h/l/w$k;-><init>(Ld/h/l/w;)V

    iput-object p1, p0, Ld/h/l/w;->a:Ld/h/l/w$k;

    return-void
.end method

.method public static e(Ld/h/f/b;IIII)Ld/h/f/b;
    .locals 5

    iget v0, p0, Ld/h/f/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Ld/h/f/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Ld/h/f/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Ld/h/f/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Ld/h/f/b;->a(IIII)Ld/h/f/b;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/view/WindowInsets;)Ld/h/l/w;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ld/h/l/w;->j(Landroid/view/WindowInsets;Landroid/view/View;)Ld/h/l/w;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/view/WindowInsets;Landroid/view/View;)Ld/h/l/w;
    .locals 2

    new-instance v0, Ld/h/l/w;

    if-eqz p0, :cond_1

    invoke-direct {v0, p0}, Ld/h/l/w;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ld/h/l/p;->A(Landroid/view/View;)Ld/h/l/w;

    move-result-object p0

    .line 1
    iget-object v1, v0, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {v1, p0}, Ld/h/l/w$k;->m(Ld/h/l/w;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 3
    iget-object p1, v0, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {p1, p0}, Ld/h/l/w$k;->d(Landroid/view/View;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    .line 4
    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {v0}, Ld/h/l/w$k;->h()Ld/h/f/b;

    move-result-object v0

    iget v0, v0, Ld/h/f/b;->d:I

    return v0
.end method

.method public b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {v0}, Ld/h/l/w$k;->h()Ld/h/f/b;

    move-result-object v0

    iget v0, v0, Ld/h/f/b;->a:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {v0}, Ld/h/l/w$k;->h()Ld/h/f/b;

    move-result-object v0

    iget v0, v0, Ld/h/f/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {v0}, Ld/h/l/w$k;->h()Ld/h/f/b;

    move-result-object v0

    iget v0, v0, Ld/h/f/b;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ld/h/l/w;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ld/h/l/w;

    iget-object v0, p0, Ld/h/l/w;->a:Ld/h/l/w$k;

    iget-object p1, p1, Ld/h/l/w;->a:Ld/h/l/w$k;

    .line 1
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {v0}, Ld/h/l/w$k;->j()Z

    move-result v0

    return v0
.end method

.method public g(IIII)Ld/h/l/w;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ld/h/l/w$d;

    invoke-direct {v0, p0}, Ld/h/l/w$d;-><init>(Ld/h/l/w;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Ld/h/l/w$c;

    invoke-direct {v0, p0}, Ld/h/l/w$c;-><init>(Ld/h/l/w;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ld/h/l/w$b;

    invoke-direct {v0, p0}, Ld/h/l/w$b;-><init>(Ld/h/l/w;)V

    .line 2
    :goto_0
    invoke-static {p1, p2, p3, p4}, Ld/h/f/b;->a(IIII)Ld/h/f/b;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ld/h/l/w$e;->c(Ld/h/f/b;)V

    .line 4
    invoke-virtual {v0}, Ld/h/l/w$e;->a()Ld/h/l/w;

    move-result-object p1

    return-object p1
.end method

.method public h()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Ld/h/l/w;->a:Ld/h/l/w$k;

    instance-of v1, v0, Ld/h/l/w$f;

    if-eqz v1, :cond_0

    check-cast v0, Ld/h/l/w$f;

    iget-object v0, v0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ld/h/l/w;->a:Ld/h/l/w$k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ld/h/l/w$k;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
