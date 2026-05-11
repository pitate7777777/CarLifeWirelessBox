.class public final Lg/a/w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/k/f$a;
.implements Lf/k/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/k/f$a;",
        "Lf/k/f$b<",
        "Lg/a/w0;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lg/a/w0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/a/w0;

    invoke-direct {v0}, Lg/a/w0;-><init>()V

    sput-object v0, Lg/a/w0;->e:Lg/a/w0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lf/k/f$a$a;->a(Lf/k/f$a;Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lf/k/f$b;)Lf/k/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lf/k/f$a;",
            ">(",
            "Lf/k/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lf/k/f$a$a;->b(Lf/k/f$a;Lf/k/f$b;)Lf/k/f$a;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lf/k/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/k/f$b<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public minusKey(Lf/k/f$b;)Lf/k/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/k/f$b<",
            "*>;)",
            "Lf/k/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Lf/k/f$a$a;->c(Lf/k/f$a;Lf/k/f$b;)Lf/k/f;

    move-result-object p1

    return-object p1
.end method
