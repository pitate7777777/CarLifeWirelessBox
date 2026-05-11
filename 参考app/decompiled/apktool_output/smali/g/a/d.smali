.class public final Lg/a/d;
.super Lg/a/y;
.source ""


# instance fields
.field public final k:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Lg/a/y;-><init>()V

    iput-object p1, p0, Lg/a/d;->k:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lg/a/d;->k:Ljava/lang/Thread;

    return-object v0
.end method
