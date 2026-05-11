.class public final Lg/a/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/a/e0;


# instance fields
.field public final e:Lg/a/p0;


# direct methods
.method public constructor <init>(Lg/a/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/a/d0;->e:Lg/a/p0;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lg/a/p0;
    .locals 1

    iget-object v0, p0, Lg/a/d0;->e:Lg/a/p0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
