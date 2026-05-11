.class public abstract Lf/k/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/k/f$a;


# instance fields
.field public final key:Lf/k/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/k/f$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/k/f$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/k/f$b<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/k/a;->key:Lf/k/f$b;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lf/m/a/c<",
            "-TR;-",
            "Lf/k/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lf/k/f$a$a;->a(Lf/k/f$a;Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lf/k/f$b;)Lf/k/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lf/k/f$a;",
            ">(",
            "Lf/k/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lf/k/f$a$a;->b(Lf/k/f$a;Lf/k/f$b;)Lf/k/f$a;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lf/k/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/k/f$b<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lf/k/a;->key:Lf/k/f$b;

    return-object v0
.end method

.method public minusKey(Lf/k/f$b;)Lf/k/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/k/f$b<",
            "*>;)",
            "Lf/k/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lf/k/f$a$a;->c(Lf/k/f$a;Lf/k/f$b;)Lf/k/f;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lf/k/f;)Lf/k/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf/k/h;->e:Lf/k/h;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lf/k/g;->e:Lf/k/g;

    invoke-interface {p1, p0, v0}, Lf/k/f;->fold(Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/k/f;

    :goto_0
    return-object p1
.end method
