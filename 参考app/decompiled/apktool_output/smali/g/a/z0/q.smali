.class public final Lg/a/z0/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/a/z0/o;

.field public static final b:Lf/m/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/c<",
            "Ljava/lang/Object;",
            "Lf/k/f$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lf/m/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/c<",
            "Lg/a/s0<",
            "*>;",
            "Lf/k/f$a;",
            "Lg/a/s0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final d:Lf/m/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/m/a/c<",
            "Lg/a/z0/t;",
            "Lf/k/f$a;",
            "Lg/a/z0/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/a/z0/o;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lg/a/z0/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/a/z0/q;->a:Lg/a/z0/o;

    sget-object v0, Lg/a/z0/q$a;->e:Lg/a/z0/q$a;

    sput-object v0, Lg/a/z0/q;->b:Lf/m/a/c;

    sget-object v0, Lg/a/z0/q$b;->e:Lg/a/z0/q$b;

    sput-object v0, Lg/a/z0/q;->c:Lf/m/a/c;

    sget-object v0, Lg/a/z0/q$c;->e:Lg/a/z0/q$c;

    sput-object v0, Lg/a/z0/q;->d:Lf/m/a/c;

    return-void
.end method

.method public static final a(Lf/k/f;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lg/a/z0/q;->a:Lg/a/z0/o;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lg/a/z0/t;

    if-eqz v0, :cond_2

    check-cast p1, Lg/a/z0/t;

    .line 1
    iget-object v0, p1, Lg/a/z0/t;->c:[Lg/a/s0;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p1, Lg/a/z0/t;->c:[Lg/a/s0;

    aget-object v2, v2, v0

    invoke-static {v2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    iget-object v3, p1, Lg/a/z0/t;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-interface {v2, p0, v0}, Lg/a/s0;->k(Lf/k/f;Ljava/lang/Object;)V

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lg/a/z0/q;->c:Lf/m/a/c;

    invoke-interface {p0, v0, v1}, Lf/k/f;->fold(Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lg/a/s0;

    invoke-interface {v0, p0, p1}, Lg/a/s0;->k(Lf/k/f;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lf/k/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object p1, Lg/a/z0/q;->b:Lf/m/a/c;

    invoke-interface {p0, v0, p1}, Lf/k/f;->fold(Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    :cond_0
    if-ne p1, v0, :cond_1

    .line 2
    sget-object p0, Lg/a/z0/q;->a:Lg/a/z0/o;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lg/a/z0/t;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lg/a/z0/t;-><init>(Lf/k/f;I)V

    sget-object p1, Lg/a/z0/q;->d:Lf/m/a/c;

    invoke-interface {p0, v0, p1}, Lf/k/f;->fold(Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    check-cast p1, Lg/a/s0;

    invoke-interface {p1, p0}, Lg/a/s0;->m(Lf/k/f;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
