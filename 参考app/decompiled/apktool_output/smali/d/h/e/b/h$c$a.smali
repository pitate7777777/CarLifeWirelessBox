.class public Ld/h/e/b/h$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h/e/b/h$c;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/graphics/Typeface;

.field public final synthetic f:Ld/h/e/b/h$c;


# direct methods
.method public constructor <init>(Ld/h/e/b/h$c;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Ld/h/e/b/h$c$a;->f:Ld/h/e/b/h$c;

    iput-object p2, p0, Ld/h/e/b/h$c$a;->e:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/h/e/b/h$c$a;->f:Ld/h/e/b/h$c;

    iget-object v1, p0, Ld/h/e/b/h$c$a;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ld/h/e/b/h$c;->e(Landroid/graphics/Typeface;)V

    return-void
.end method
