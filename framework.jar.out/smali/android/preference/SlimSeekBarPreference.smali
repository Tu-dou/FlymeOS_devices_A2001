.class public Landroid/preference/SlimSeekBarPreference;
.super Landroid/preference/Preference;
.source "SlimSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static maximum:I


# instance fields
.field private bar:Landroid/widget/SeekBar;

.field defaultValue:I

.field public interval:I

.field private mChanger:Landroid/preference/Preference$OnPreferenceChangeListener;

.field mDisablePercentageValue:Z

.field mDisableText:Z

.field mIsMilliSeconds:Z

.field mMinimum:I

.field mMultiply:I

.field mSetDefault:I

.field private monitorBox:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x64

    sput v0, Landroid/preference/SlimSeekBarPreference;->maximum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x5

    iput v0, p0, Landroid/preference/SlimSeekBarPreference;->interval:I

    .line 39
    const/16 v0, 0x3c

    iput v0, p0, Landroid/preference/SlimSeekBarPreference;->defaultValue:I

    .line 40
    iput v1, p0, Landroid/preference/SlimSeekBarPreference;->mSetDefault:I

    .line 41
    iput v1, p0, Landroid/preference/SlimSeekBarPreference;->mMultiply:I

    .line 42
    iput v1, p0, Landroid/preference/SlimSeekBarPreference;->mMinimum:I

    .line 43
    iput-boolean v2, p0, Landroid/preference/SlimSeekBarPreference;->mDisableText:Z

    .line 44
    iput-boolean v2, p0, Landroid/preference/SlimSeekBarPreference;->mDisablePercentageValue:Z

    .line 45
    iput-boolean v2, p0, Landroid/preference/SlimSeekBarPreference;->mIsMilliSeconds:Z

    .line 51
    return-void
.end method


# virtual methods
.method public disablePercentageValue(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/preference/SlimSeekBarPreference;->mDisablePercentageValue:Z

    .line 120
    return-void
.end method

.method public disableText(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Landroid/preference/SlimSeekBarPreference;->mDisableText:Z

    .line 124
    return-void
.end method

.method public isMilliseconds(Z)V
    .locals 0
    .param p1, "millis"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Landroid/preference/SlimSeekBarPreference;->mIsMilliSeconds:Z

    .line 144
    return-void
.end method

.method public minimumValue(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 139
    iput p1, p0, Landroid/preference/SlimSeekBarPreference;->mMinimum:I

    .line 140
    return-void
.end method

.method public multiplyValue(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 135
    iput p1, p0, Landroid/preference/SlimSeekBarPreference;->mMultiply:I

    .line 136
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/preference/SlimSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090018

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "layout":Landroid/view/View;
    const v1, 0x1020031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/preference/SlimSeekBarPreference;->monitorBox:Landroid/widget/TextView;

    .line 61
    const v1, 0x1020032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Landroid/preference/SlimSeekBarPreference;->bar:Landroid/widget/SeekBar;

    .line 62
    iget-object v1, p0, Landroid/preference/SlimSeekBarPreference;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 63
    iget-object v1, p0, Landroid/preference/SlimSeekBarPreference;->bar:Landroid/widget/SeekBar;

    iget v2, p0, Landroid/preference/SlimSeekBarPreference;->defaultValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 65
    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v2, -0x1

    .line 91
    int-to-float v0, p2

    iget v1, p0, Landroid/preference/SlimSeekBarPreference;->interval:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/preference/SlimSeekBarPreference;->interval:I

    mul-int p2, v0, v1

    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 94
    iget v0, p0, Landroid/preference/SlimSeekBarPreference;->mMultiply:I

    if-eq v0, v2, :cond_0

    .line 95
    iget v0, p0, Landroid/preference/SlimSeekBarPreference;->mMultiply:I

    mul-int/2addr p2, v0

    .line 98
    :cond_0
    iget v0, p0, Landroid/preference/SlimSeekBarPreference;->mMinimum:I

    if-eq v0, v2, :cond_1

    .line 99
    iget v0, p0, Landroid/preference/SlimSeekBarPreference;->mMinimum:I

    add-int/2addr p2, v0

    .line 102
    :cond_1
    iget v0, p0, Landroid/preference/SlimSeekBarPreference;->mSetDefault:I

    if-ne p2, v0, :cond_4

    .line 103
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->monitorBox:Landroid/widget/TextView;

    const v1, 0x1040018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->mChanger:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->mChanger:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 116
    :cond_3
    return-void

    .line 104
    :cond_4
    iget-boolean v0, p0, Landroid/preference/SlimSeekBarPreference;->mDisableText:Z

    if-nez v0, :cond_2

    .line 105
    iget-boolean v0, p0, Landroid/preference/SlimSeekBarPreference;->mIsMilliSeconds:Z

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->monitorBox:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_5
    iget-boolean v0, p0, Landroid/preference/SlimSeekBarPreference;->mDisablePercentageValue:Z

    if-nez v0, :cond_6

    .line 108
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->monitorBox:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_6
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->monitorBox:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 149
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 154
    return-void
.end method

.method public setDefault(I)V
    .locals 0
    .param p1, "defaultVal"    # I

    .prologue
    .line 131
    iput p1, p0, Landroid/preference/SlimSeekBarPreference;->mSetDefault:I

    .line 132
    return-void
.end method

.method public setInitValue(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/preference/SlimSeekBarPreference;->defaultValue:I

    .line 70
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->bar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/preference/SlimSeekBarPreference;->bar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SlimSeekBarPreference;->defaultValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public setInterval(I)V
    .locals 0
    .param p1, "inter"    # I

    .prologue
    .line 127
    iput p1, p0, Landroid/preference/SlimSeekBarPreference;->interval:I

    .line 128
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/preference/SlimSeekBarPreference;->mChanger:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 85
    invoke-super {p0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    return-void
.end method
