.class public abstract Lg/a/o;
.super Lf/k/a;
.source ""

# interfaces
.implements Lf/k/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/o$a;
    }
.end annotation


# static fields
.field public static final e:Lg/a/o$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/a/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/a/o$a;-><init>(Lf/m/b/b;)V

    sput-object v0, Lg/a/o;->e:Lg/a/o$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lf/k/e;->b:Lf/k/e$a;

    invoke-direct {p0, v0}, Lf/k/a;-><init>(Lf/k/f$b;)V

    return-void
.end method


# virtual methods
.method public get(Lf/k/f$b;)Lf/k/f$a;
    .locals 2
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

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lf/k/b;

    if-eqz v1, :cond_2

    check-cast p1, Lf/k/b;

    invoke-interface {p0}, Lf/k/f$a;->getKey()Lf/k/f$b;

    move-result-object v1

    .line 2
    invoke-static {v1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    iget-object v0, p1, Lf/k/b;->e:Lf/k/f$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "element"

    .line 3
    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lf/k/b;->f:Lf/m/a/b;

    invoke-interface {p1, p0}, Lf/m/a/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/k/f$a;

    .line 4
    instance-of v0, p1, Lf/k/f$a;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_2
    sget-object v0, Lf/k/e;->b:Lf/k/e$a;

    if-ne v0, p1, :cond_3

    move-object p1, p0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x0

    :cond_4
    :goto_3
    return-object p1
.end method

.method public minusKey(Lf/k/f$b;)Lf/k/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/k/f$b<",
            "*>;)",
            "Lf/k/f;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lf/k/b;

    if-eqz v1, :cond_3

    check-cast p1, Lf/k/b;

    invoke-interface {p0}, Lf/k/f$a;->getKey()Lf/k/f$b;

    move-result-object v1

    .line 2
    invoke-static {v1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    iget-object v0, p1, Lf/k/b;->e:Lf/k/f$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1, p0}, Lf/k/b;->a(Lf/k/f$a;)Lf/k/f$a;

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_2
    sget-object p1, Lf/k/h;->e:Lf/k/h;

    goto :goto_3

    :cond_2
    move-object p1, p0

    goto :goto_3

    :cond_3
    sget-object v0, Lf/k/e;->b:Lf/k/e$a;

    if-ne v0, p1, :cond_2

    goto :goto_2

    :goto_3
    return-object p1
.end method

.method public abstract s(Lf/k/f;Ljava/lang/Runnable;)V
.end method

.method public t(Lf/k/f;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ld/b/k/m$i;->a0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
