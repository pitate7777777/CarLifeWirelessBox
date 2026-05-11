.class public final Lg/a/z0/q$a;
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
        "Ljava/lang/Object;",
        "Lf/k/f$a;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lg/a/z0/q$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/a/z0/q$a;

    invoke-direct {v0}, Lg/a/z0/q$a;-><init>()V

    sput-object v0, Lg/a/z0/q$a;->e:Lg/a/z0/q$a;

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
    .locals 1

    check-cast p2, Lf/k/f$a;

    .line 1
    instance-of v0, p2, Lg/a/s0;

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    if-nez p1, :cond_2

    move-object p1, p2

    goto :goto_2

    :cond_2
    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3
    :goto_2
    return-object p1
.end method
