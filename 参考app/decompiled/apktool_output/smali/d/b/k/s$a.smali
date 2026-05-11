.class public Ld/b/k/s$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/h/l/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/k/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld/b/k/s;


# direct methods
.method public constructor <init>(Ld/b/k/s;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/s$a;->e:Ld/b/k/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public o(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Ld/b/k/s$a;->e:Ld/b/k/s;

    invoke-virtual {v0, p1}, Ld/b/k/s;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
