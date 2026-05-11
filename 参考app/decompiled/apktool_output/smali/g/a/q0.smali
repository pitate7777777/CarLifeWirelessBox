.class public final Lg/a/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/a/v;
.implements Lg/a/e;


# static fields
.field public static final e:Lg/a/q0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/a/q0;

    invoke-direct {v0}, Lg/a/q0;-><init>()V

    sput-object v0, Lg/a/q0;->e:Lg/a/q0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
