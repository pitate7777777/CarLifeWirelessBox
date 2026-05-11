.class public final Lg/a/b0;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/b<",
        "Lf/k/f$a;",
        "Lg/a/c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lg/a/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/a/b0;

    invoke-direct {v0}, Lg/a/b0;-><init>()V

    sput-object v0, Lg/a/b0;->e:Lg/a/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lf/k/f$a;

    .line 1
    instance-of v0, p1, Lg/a/c0;

    if-eqz v0, :cond_0

    check-cast p1, Lg/a/c0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
