.class public Ld/b/k/m$g$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/k/m$g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/k/m$g;


# direct methods
.method public constructor <init>(Ld/b/k/m$g;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/m$g$a;->a:Ld/b/k/m$g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Ld/b/k/m$g$a;->a:Ld/b/k/m$g;

    invoke-virtual {p1}, Ld/b/k/m$g;->d()V

    return-void
.end method
