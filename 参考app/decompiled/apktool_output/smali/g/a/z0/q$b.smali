.class public final Lg/a/z0/q$b;
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
        "Lg/a/s0<",
        "*>;",
        "Lf/k/f$a;",
        "Lg/a/s0<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final e:Lg/a/z0/q$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/a/z0/q$b;

    invoke-direct {v0}, Lg/a/z0/q$b;-><init>()V

    sput-object v0, Lg/a/z0/q$b;->e:Lg/a/z0/q$b;

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
    .locals 0

    check-cast p1, Lg/a/s0;

    check-cast p2, Lf/k/f$a;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of p1, p2, Lg/a/s0;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lg/a/s0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
