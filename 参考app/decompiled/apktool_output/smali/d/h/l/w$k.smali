.class public Ld/h/l/w$k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# static fields
.field public static final b:Ld/h/l/w;


# instance fields
.field public final a:Ld/h/l/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ld/h/l/w$d;

    invoke-direct {v0}, Ld/h/l/w$d;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Ld/h/l/w$c;

    invoke-direct {v0}, Ld/h/l/w$c;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ld/h/l/w$b;

    invoke-direct {v0}, Ld/h/l/w$b;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ld/h/l/w$e;->a()Ld/h/l/w;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {v0}, Ld/h/l/w$k;->a()Ld/h/l/w;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {v0}, Ld/h/l/w$k;->b()Ld/h/l/w;

    move-result-object v0

    .line 5
    iget-object v0, v0, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {v0}, Ld/h/l/w$k;->c()Ld/h/l/w;

    move-result-object v0

    .line 6
    sput-object v0, Ld/h/l/w$k;->b:Ld/h/l/w;

    return-void
.end method

.method public constructor <init>(Ld/h/l/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/h/l/w$k;->a:Ld/h/l/w;

    return-void
.end method


# virtual methods
.method public a()Ld/h/l/w;
    .locals 1

    iget-object v0, p0, Ld/h/l/w$k;->a:Ld/h/l/w;

    return-object v0
.end method

.method public b()Ld/h/l/w;
    .locals 1

    iget-object v0, p0, Ld/h/l/w$k;->a:Ld/h/l/w;

    return-object v0
.end method

.method public c()Ld/h/l/w;
    .locals 1

    iget-object v0, p0, Ld/h/l/w$k;->a:Ld/h/l/w;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e()Ld/h/l/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ld/h/l/w$k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ld/h/l/w$k;

    invoke-virtual {p0}, Ld/h/l/w$k;->k()Z

    move-result v1

    invoke-virtual {p1}, Ld/h/l/w$k;->k()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Ld/h/l/w$k;->j()Z

    move-result v1

    invoke-virtual {p1}, Ld/h/l/w$k;->j()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Ld/h/l/w$k;->h()Ld/h/f/b;

    move-result-object v1

    invoke-virtual {p1}, Ld/h/l/w$k;->h()Ld/h/f/b;

    move-result-object v3

    .line 1
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Ld/h/l/w$k;->g()Ld/h/f/b;

    move-result-object v1

    invoke-virtual {p1}, Ld/h/l/w$k;->g()Ld/h/f/b;

    move-result-object v3

    .line 3
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Ld/h/l/w$k;->e()Ld/h/l/c;

    move-result-object v1

    invoke-virtual {p1}, Ld/h/l/w$k;->e()Ld/h/l/c;

    move-result-object p1

    .line 5
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ld/h/f/b;
    .locals 1

    invoke-virtual {p0}, Ld/h/l/w$k;->h()Ld/h/f/b;

    move-result-object v0

    return-object v0
.end method

.method public g()Ld/h/f/b;
    .locals 1

    sget-object v0, Ld/h/f/b;->e:Ld/h/f/b;

    return-object v0
.end method

.method public h()Ld/h/f/b;
    .locals 1

    sget-object v0, Ld/h/f/b;->e:Ld/h/f/b;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ld/h/l/w$k;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ld/h/l/w$k;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ld/h/l/w$k;->h()Ld/h/f/b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ld/h/l/w$k;->g()Ld/h/f/b;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ld/h/l/w$k;->e()Ld/h/l/c;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(IIII)Ld/h/l/w;
    .locals 0

    sget-object p1, Ld/h/l/w$k;->b:Ld/h/l/w;

    return-object p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l([Ld/h/f/b;)V
    .locals 0

    return-void
.end method

.method public m(Ld/h/l/w;)V
    .locals 0

    return-void
.end method

.method public n(Ld/h/f/b;)V
    .locals 0

    return-void
.end method
