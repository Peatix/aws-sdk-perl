
package Paws::Rbin::UnlockRule;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnlockRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules/{identifier}/unlock');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rbin::UnlockRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rbin::UnlockRule - Arguments for method UnlockRule on L<Paws::Rbin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnlockRule on the
L<Amazon Recycle Bin|Paws::Rbin> service. Use the attributes of this class
as arguments to method UnlockRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnlockRule.

=head1 SYNOPSIS

    my $rbin = Paws->service('Rbin');
    my $UnlockRuleResponse = $rbin->UnlockRule(
      Identifier => 'MyRuleIdentifier',

    );

    # Results:
    my $Description         = $UnlockRuleResponse->Description;
    my $ExcludeResourceTags = $UnlockRuleResponse->ExcludeResourceTags;
    my $Identifier          = $UnlockRuleResponse->Identifier;
    my $LockConfiguration   = $UnlockRuleResponse->LockConfiguration;
    my $LockEndTime         = $UnlockRuleResponse->LockEndTime;
    my $LockState           = $UnlockRuleResponse->LockState;
    my $ResourceTags        = $UnlockRuleResponse->ResourceTags;
    my $ResourceType        = $UnlockRuleResponse->ResourceType;
    my $RetentionPeriod     = $UnlockRuleResponse->RetentionPeriod;
    my $RuleArn             = $UnlockRuleResponse->RuleArn;
    my $Status              = $UnlockRuleResponse->Status;

    # Returns a L<Paws::Rbin::UnlockRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rbin/UnlockRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique ID of the retention rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnlockRule in L<Paws::Rbin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

