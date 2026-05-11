.class public final Lg/a/u0;
.super Lg/a/o;
.source ""


# static fields
.field public static final f:Lg/a/u0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/a/u0;

    invoke-direct {v0}, Lg/a/u0;-><init>()V

    sput-object v0, Lg/a/u0;->f:Lg/a/u0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Lf/k/f;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p2, Lg/a/x0;->e:Lg/a/x0$a;

    invoke-interface {p1, p2}, Lf/k/f;->get(Lf/k/f$b;)Lf/k/f$a;

    move-result-object p1

    check-cast p1, Lg/a/x0;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Lf/k/f;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
