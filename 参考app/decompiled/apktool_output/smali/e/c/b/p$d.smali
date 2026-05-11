.class public Le/c/b/p$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/p$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/p$d$a;
    }
.end annotation


# static fields
.field public static final a:Le/c/b/p$d;

.field public static final b:Le/c/b/p$d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/b/p$d;

    invoke-direct {v0}, Le/c/b/p$d;-><init>()V

    sput-object v0, Le/c/b/p$d;->a:Le/c/b/p$d;

    new-instance v0, Le/c/b/p$d$a;

    invoke-direct {v0}, Le/c/b/p$d$a;-><init>()V

    sput-object v0, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/c/b/r$e;Le/c/b/r$e;)Le/c/b/r$e;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public b(Le/c/b/r$h;Le/c/b/r$h;)Le/c/b/r$h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/c/b/r$h<",
            "TT;>;",
            "Le/c/b/r$h<",
            "TT;>;)",
            "Le/c/b/r$h<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public c(Le/c/b/d0;Le/c/b/d0;)Le/c/b/d0;
    .locals 0

    invoke-virtual {p1, p2}, Le/c/b/d0;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public e(ZZZZ)Z
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public f(Le/c/b/r$f;Le/c/b/r$f;)Le/c/b/r$f;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public g(ZLe/c/b/g;ZLe/c/b/g;)Le/c/b/g;
    .locals 0

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Le/c/b/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public h(ZFZF)F
    .locals 0

    if-ne p1, p3, :cond_0

    cmpl-float p1, p2, p4

    if-nez p1, :cond_0

    return p2

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public i(ZJZJ)J
    .locals 0

    if-ne p1, p4, :cond_0

    cmp-long p1, p2, p5

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public j(ZDZD)D
    .locals 0

    if-ne p1, p4, :cond_0

    cmpl-double p1, p2, p5

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public k(Le/c/b/r$g;Le/c/b/r$g;)Le/c/b/r$g;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public l(ZIZI)I
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method

.method public m(Le/c/b/n;Le/c/b/n;)Le/c/b/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/n<",
            "Le/c/b/p$f;",
            ">;",
            "Le/c/b/n<",
            "Le/c/b/p$f;",
            ">;)",
            "Le/c/b/n<",
            "Le/c/b/p$f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Le/c/b/n;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Le/c/b/p$d;->b:Le/c/b/p$d$a;

    throw p1
.end method
