.class public Ld/k/d/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Ld/k/d/c$a;->e:Ld/k/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object v0, p0, Ld/k/d/c$a;->e:Ld/k/d/c;

    .line 1
    iget-object v1, v0, Ld/k/d/c;->c0:Landroid/content/DialogInterface$OnDismissListener;

    .line 2
    iget-object v0, v0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    .line 3
    invoke-interface {v1, v0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
