.class public Ld/p/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/p/c;->M0(Ld/b/k/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld/p/c;


# direct methods
.method public constructor <init>(Ld/p/c;)V
    .locals 0

    iput-object p1, p0, Ld/p/c$a;->e:Ld/p/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Ld/p/c$a;->e:Ld/p/c;

    iput p2, v0, Ld/p/c;->v0:I

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p2}, Ld/p/e;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
