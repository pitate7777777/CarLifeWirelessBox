.class public abstract Lc/a/a/a/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/a/c$b;,
        Lc/a/a/a/a/c$a;
    }
.end annotation


# instance fields
.field public a:Lc/a/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/a/a/c$a;

    invoke-direct {v0, p0}, Lc/a/a/a/a/c$a;-><init>(Lc/a/a/a/a/c;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    return-void
.end method
