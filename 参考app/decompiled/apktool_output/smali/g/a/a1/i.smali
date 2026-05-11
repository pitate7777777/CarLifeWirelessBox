.class public abstract Lg/a/a1/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:J

.field public f:Lg/a/a1/j;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lg/a/a1/g;->e:Lg/a/a1/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lg/a/a1/i;->e:J

    iput-object v0, p0, Lg/a/a1/i;->f:Lg/a/a1/j;

    return-void
.end method

.method public constructor <init>(JLg/a/a1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lg/a/a1/i;->e:J

    iput-object p3, p0, Lg/a/a1/i;->f:Lg/a/a1/j;

    return-void
.end method
