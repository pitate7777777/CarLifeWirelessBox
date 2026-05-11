.class public Ld/s/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/s/u;


# instance fields
.field public final a:Landroid/view/ViewOverlay;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iput-object p1, p0, Ld/s/t;->a:Landroid/view/ViewOverlay;

    return-void
.end method
