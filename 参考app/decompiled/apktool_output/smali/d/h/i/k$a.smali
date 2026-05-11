.class public Ld/h/i/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h/i/k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld/h/k/a;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld/h/i/k;Ld/h/k/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Ld/h/i/k$a;->e:Ld/h/k/a;

    iput-object p3, p0, Ld/h/i/k$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/h/i/k$a;->e:Ld/h/k/a;

    iget-object v1, p0, Ld/h/i/k$a;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ld/h/k/a;->a(Ljava/lang/Object;)V

    return-void
.end method
