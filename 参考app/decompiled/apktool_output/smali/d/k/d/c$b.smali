.class public Ld/k/d/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/k/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld/k/d/c;


# direct methods
.method public constructor <init>(Ld/k/d/c;)V
    .locals 0

    iput-object p1, p0, Ld/k/d/c$b;->e:Ld/k/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object p1, p0, Ld/k/d/c$b;->e:Ld/k/d/c;

    .line 1
    iget-object v0, p1, Ld/k/d/c;->j0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ld/k/d/c;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
