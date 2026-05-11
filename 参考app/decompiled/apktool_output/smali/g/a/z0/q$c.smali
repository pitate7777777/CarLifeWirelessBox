.class public final Lg/a/z0/q$c;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/a/z0/q;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/c<",
        "Lg/a/z0/t;",
        "Lf/k/f$a;",
        "Lg/a/z0/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lg/a/z0/q$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/a/z0/q$c;

    invoke-direct {v0}, Lg/a/z0/q$c;-><init>()V

    sput-object v0, Lg/a/z0/q$c;->e:Lg/a/z0/q$c;

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

    check-cast p1, Lg/a/z0/t;

    check-cast p2, Lf/k/f$a;

    .line 1
    instance-of v0, p2, Lg/a/s0;

    if-eqz v0, :cond_0

    check-cast p2, Lg/a/s0;

    iget-object v0, p1, Lg/a/z0/t;->a:Lf/k/f;

    invoke-interface {p2, v0}, Lg/a/s0;->m(Lf/k/f;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lg/a/z0/t;->b:[Ljava/lang/Object;

    iget v2, p1, Lg/a/z0/t;->d:I

    aput-object v0, v1, v2

    iget-object v0, p1, Lg/a/z0/t;->c:[Lg/a/s0;

    add-int/lit8 v1, v2, 0x1

    iput v1, p1, Lg/a/z0/t;->d:I

    aput-object p2, v0, v2

    :cond_0
    return-object p1
.end method
