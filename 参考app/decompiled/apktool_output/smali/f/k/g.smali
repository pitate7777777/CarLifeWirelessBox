.class public final Lf/k/g;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/c<",
        "Lf/k/f;",
        "Lf/k/f$a;",
        "Lf/k/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lf/k/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/k/g;

    invoke-direct {v0}, Lf/k/g;-><init>()V

    sput-object v0, Lf/k/g;->e:Lf/k/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lf/k/f;

    check-cast p2, Lf/k/f$a;

    const-string v0, "acc"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lf/k/f$a;->getKey()Lf/k/f$b;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/k/f;->minusKey(Lf/k/f$b;)Lf/k/f;

    move-result-object p1

    sget-object v0, Lf/k/h;->e:Lf/k/h;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lf/k/e;->b:Lf/k/e$a;

    invoke-interface {p1, v0}, Lf/k/f;->get(Lf/k/f$b;)Lf/k/f$a;

    move-result-object v0

    check-cast v0, Lf/k/e;

    if-nez v0, :cond_1

    new-instance v0, Lf/k/c;

    invoke-direct {v0, p1, p2}, Lf/k/c;-><init>(Lf/k/f;Lf/k/f$a;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    sget-object v1, Lf/k/e;->b:Lf/k/e$a;

    invoke-interface {p1, v1}, Lf/k/f;->minusKey(Lf/k/f$b;)Lf/k/f;

    move-result-object p1

    sget-object v1, Lf/k/h;->e:Lf/k/h;

    if-ne p1, v1, :cond_2

    new-instance p1, Lf/k/c;

    invoke-direct {p1, p2, v0}, Lf/k/c;-><init>(Lf/k/f;Lf/k/f$a;)V

    move-object p2, p1

    goto :goto_0

    :cond_2
    new-instance v1, Lf/k/c;

    new-instance v2, Lf/k/c;

    invoke-direct {v2, p1, p2}, Lf/k/c;-><init>(Lf/k/f;Lf/k/f$a;)V

    invoke-direct {v1, v2, v0}, Lf/k/c;-><init>(Lf/k/f;Lf/k/f$a;)V

    move-object p2, v1

    :goto_0
    return-object p2
.end method
