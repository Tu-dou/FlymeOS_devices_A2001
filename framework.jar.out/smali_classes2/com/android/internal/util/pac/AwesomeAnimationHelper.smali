.class public Lcom/android/internal/util/pac/AwesomeAnimationHelper;
.super Ljava/lang/Object;
.source "AwesomeAnimationHelper.java"


# static fields
.field public static final ANIMATION_DEFAULT:I = 0x0

.field public static final ANIMATION_FADE:I = 0x1

.field public static final ANIMATION_GROW_SHRINK:I = 0x9

.field public static final ANIMATION_GROW_SHRINK_BOTTOM:I = 0xb

.field public static final ANIMATION_GROW_SHRINK_CENTER:I = 0xa

.field public static final ANIMATION_GROW_SHRINK_LEFT:I = 0xc

.field public static final ANIMATION_GROW_SHRINK_RIGHT:I = 0xd

.field public static final ANIMATION_RANDOM:I = -0x1

.field public static final ANIMATION_SLIDE_DOWN:I = 0x7

.field public static final ANIMATION_SLIDE_LEFT:I = 0x3

.field public static final ANIMATION_SLIDE_LEFT_NO_FADE:I = 0x5

.field public static final ANIMATION_SLIDE_RIGHT:I = 0x2

.field public static final ANIMATION_SLIDE_RIGHT_NO_FADE:I = 0x4

.field public static final ANIMATION_SLIDE_UP:I = 0x6

.field public static final ANIMATION_TRANSLUCENT:I = 0x8

.field public static final INTERPOLATOR_ACCELERATE:I = 0x1

.field public static final INTERPOLATOR_ACCELERATE_DECELERATE:I = 0x3

.field public static final INTERPOLATOR_ANTICIPATE:I = 0x4

.field public static final INTERPOLATOR_ANTICIPATE_OVERSHOOT:I = 0x6

.field public static final INTERPOLATOR_BOUNCE:I = 0x7

.field public static final INTERPOLATOR_CYCLE:I = 0x8

.field public static final INTERPOLATOR_DECELERATE:I = 0x2

.field public static final INTERPOLATOR_LINEAR:I = 0x9

.field public static final INTERPOLATOR_NONE:I = 0x0

.field public static final INTERPOLATOR_OVERSHOOT:I = 0x5

.field public static final TOAST_DEFAULT:I = 0x1

.field public static final TOAST_FADE:I = 0x2

.field public static final TOAST_FASTFADE:I = 0x9

.field public static final TOAST_GROWFADE:I = 0xa

.field public static final TOAST_GROWFADEBOTTOM:I = 0xc

.field public static final TOAST_GROWFADECENTER:I = 0xb

.field public static final TOAST_HONAMI:I = 0x8

.field public static final TOAST_NONE:I = 0x0

.field public static final TOAST_RANDOM:I = -0x1

.field public static final TOAST_SLIGHTLEFT:I = 0x4

.field public static final TOAST_SLIGHTRIGHT:I = 0x3

.field public static final TOAST_TN:I = 0x7

.field public static final TOAST_TOKO:I = 0x6

.field public static final TOAST_TRANSLUCENT:I = 0xd

.field public static final TOAST_XYLON:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationsList()[I
    .locals 5

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "animList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 91
    .local v3, "length":I
    new-array v0, v3, [I

    .line 92
    .local v0, "anim":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object v0
.end method

.method public static getInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "itplr":Landroid/view/animation/Interpolator;
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    const v1, 0x10a0005

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 175
    goto :goto_0

    .line 177
    :pswitch_1
    const v1, 0x10a0006

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 178
    goto :goto_0

    .line 180
    :pswitch_2
    const v1, 0x10a0004

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 181
    goto :goto_0

    .line 183
    :pswitch_3
    const v1, 0x10a0007

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 184
    goto :goto_0

    .line 186
    :pswitch_4
    const v1, 0x10a0008

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 187
    goto :goto_0

    .line 189
    :pswitch_5
    const v1, 0x10a0009

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 190
    goto :goto_0

    .line 192
    :pswitch_6
    const v1, 0x10a000a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 193
    goto :goto_0

    .line 195
    :pswitch_7
    const v1, 0x10a000c

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 196
    goto :goto_0

    .line 198
    :pswitch_8
    const v1, 0x10a000b

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getProperName(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "index"    # I

    .prologue
    .line 163
    const v1, 0x107005b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "str":[Ljava/lang/String;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 165
    array-length v1, v0

    add-int/lit8 p1, v1, -0x1

    .line 167
    :cond_0
    aget-object v1, v0, p1

    return-object v1
.end method

.method public static getSystemAnimations(IZZ)[I
    .locals 8
    .param p0, "mAnim"    # I
    .param p1, "enterOnly"    # Z
    .param p2, "reverseExit"    # Z

    .prologue
    const v3, 0x10a0071

    const v1, 0x10a0070

    const v2, 0x10a003b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 99
    const/4 v4, -0x1

    if-ne p0, v4, :cond_0

    .line 100
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 103
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 104
    .local v0, "anim":[I
    packed-switch p0, :pswitch_data_0

    .line 158
    :goto_0
    if-eqz p1, :cond_1

    aput v2, v0, v6

    .line 159
    :cond_1
    return-object v0

    .line 106
    :pswitch_0
    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    aput v1, v0, v6

    .line 107
    const v1, 0x10a0087

    aput v1, v0, v7

    goto :goto_0

    .line 106
    :cond_2
    const v1, 0x10a0088

    goto :goto_1

    .line 110
    :pswitch_1
    if-eqz p2, :cond_3

    const v1, 0x10a0082

    :goto_2
    aput v1, v0, v6

    .line 111
    const v1, 0x10a007b

    aput v1, v0, v7

    goto :goto_0

    .line 110
    :cond_3
    const v1, 0x10a0085

    goto :goto_2

    .line 114
    :pswitch_2
    if-eqz p2, :cond_4

    const v1, 0x10a0085

    :goto_3
    aput v1, v0, v6

    .line 115
    const v1, 0x10a0077

    aput v1, v0, v7

    goto :goto_0

    .line 114
    :cond_4
    const v1, 0x10a0082

    goto :goto_3

    .line 118
    :pswitch_3
    if-eqz p2, :cond_5

    const v1, 0x10a0086

    :goto_4
    aput v1, v0, v6

    .line 119
    const v1, 0x10a007d

    aput v1, v0, v7

    goto :goto_0

    .line 118
    :cond_5
    const v1, 0x10a007f

    goto :goto_4

    .line 122
    :pswitch_4
    if-eqz p2, :cond_6

    const v1, 0x10a007f

    :goto_5
    aput v1, v0, v6

    .line 123
    const v1, 0x10a0075

    aput v1, v0, v7

    goto :goto_0

    .line 122
    :cond_6
    const v1, 0x10a0086

    goto :goto_5

    .line 126
    :pswitch_5
    if-eqz p2, :cond_7

    const v1, 0x10a0081

    :goto_6
    aput v1, v0, v6

    .line 127
    const v1, 0x10a007a

    aput v1, v0, v7

    goto :goto_0

    .line 126
    :cond_7
    const v1, 0x10a0084

    goto :goto_6

    .line 130
    :pswitch_6
    if-eqz p2, :cond_8

    const v1, 0x10a0084

    :goto_7
    aput v1, v0, v6

    .line 131
    const v1, 0x10a0076

    aput v1, v0, v7

    goto :goto_0

    .line 130
    :cond_8
    const v1, 0x10a0081

    goto :goto_7

    .line 134
    :pswitch_7
    if-eqz p2, :cond_9

    const v1, 0x10a009a

    :goto_8
    aput v1, v0, v6

    .line 135
    const v1, 0x10a0098

    aput v1, v0, v7

    goto/16 :goto_0

    .line 134
    :cond_9
    const v1, 0x10a009b

    goto :goto_8

    .line 138
    :pswitch_8
    if-eqz p2, :cond_a

    :goto_9
    aput v1, v0, v6

    .line 139
    const v1, 0x10a0026

    aput v1, v0, v7

    goto/16 :goto_0

    .line 138
    :cond_a
    const v1, 0x10a0072

    goto :goto_9

    .line 142
    :pswitch_9
    if-eqz p2, :cond_b

    move v1, v2

    :goto_a
    aput v1, v0, v6

    .line 143
    const v1, 0x10a0022

    aput v1, v0, v7

    goto/16 :goto_0

    .line 142
    :cond_b
    const v1, 0x10a006e

    goto :goto_a

    .line 146
    :pswitch_a
    if-eqz p2, :cond_c

    const v1, 0x10a0073

    :goto_b
    aput v1, v0, v6

    .line 147
    const v1, 0x10a0025

    aput v1, v0, v7

    goto/16 :goto_0

    :cond_c
    move v1, v3

    .line 146
    goto :goto_b

    .line 150
    :pswitch_b
    if-eqz p2, :cond_d

    :goto_c
    aput v3, v0, v6

    .line 151
    const v1, 0x10a0027

    aput v1, v0, v7

    goto/16 :goto_0

    .line 150
    :cond_d
    const v3, 0x10a0073

    goto :goto_c

    .line 154
    :pswitch_c
    if-eqz p2, :cond_e

    const v1, 0x10a0072

    :cond_e
    aput v1, v0, v6

    .line 155
    const v1, 0x10a0024

    aput v1, v0, v7

    goto/16 :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getToastAnimations(I)I
    .locals 3
    .param p0, "mToastAnim"    # I

    .prologue
    .line 205
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 206
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 209
    :cond_0
    const/4 v0, -0x1

    .line 210
    .local v0, "anim":I
    packed-switch p0, :pswitch_data_0

    .line 251
    :goto_0
    return v0

    .line 212
    :pswitch_0
    const v0, 0x1030004

    .line 213
    goto :goto_0

    .line 215
    :pswitch_1
    const v0, 0x10302d5

    .line 216
    goto :goto_0

    .line 218
    :pswitch_2
    const v0, 0x10302d6

    .line 219
    goto :goto_0

    .line 221
    :pswitch_3
    const v0, 0x10302d7

    .line 222
    goto :goto_0

    .line 224
    :pswitch_4
    const v0, 0x10302d8

    .line 225
    goto :goto_0

    .line 227
    :pswitch_5
    const v0, 0x10302d9

    .line 228
    goto :goto_0

    .line 230
    :pswitch_6
    const v0, 0x10302da

    .line 231
    goto :goto_0

    .line 233
    :pswitch_7
    const v0, 0x10302db

    .line 234
    goto :goto_0

    .line 236
    :pswitch_8
    const v0, 0x10302dc

    .line 237
    goto :goto_0

    .line 239
    :pswitch_9
    const v0, 0x10302dd

    .line 240
    goto :goto_0

    .line 242
    :pswitch_a
    const v0, 0x10302de

    .line 243
    goto :goto_0

    .line 245
    :pswitch_b
    const v0, 0x10302df

    .line 246
    goto :goto_0

    .line 248
    :pswitch_c
    const v0, 0x10302e0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
