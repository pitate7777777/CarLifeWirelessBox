.class public final Lg/a/y$b;
.super Lg/a/z0/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/a/z0/r<",
        "Lg/a/y$a;",
        ">;"
    }
.end annotation


# instance fields
.field public b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lg/a/z0/r;-><init>()V

    iput-wide p1, p0, Lg/a/y$b;->b:J

    return-void
.end method
