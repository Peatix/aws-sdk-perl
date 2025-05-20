
package Paws::Rbin::LockRule;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has LockConfiguration => (is => 'ro', isa => 'Paws::Rbin::LockConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'LockRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules/{identifier}/lock');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rbin::LockRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rbin::LockRule - Arguments for method LockRule on L<Paws::Rbin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method LockRule on the
L<Amazon Recycle Bin|Paws::Rbin> service. Use the attributes of this class
as arguments to method LockRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to LockRule.

=head1 SYNOPSIS

    my $rbin = Paws->service('Rbin');
    my $LockRuleResponse = $rbin->LockRule(
      Identifier        => 'MyRuleIdentifier',
      LockConfiguration => {
        UnlockDelay => {
          UnlockDelayUnit  => 'DAYS',    # values: DAYS
          UnlockDelayValue => 1,         # min: 7, max: 30

        },

      },

    );

    # Results:
    my $Description         = $LockRuleResponse->Description;
    my $ExcludeResourceTags = $LockRuleResponse->ExcludeResourceTags;
    my $Identifier          = $LockRuleResponse->Identifier;
    my $LockConfiguration   = $LockRuleResponse->LockConfiguration;
    my $LockState           = $LockRuleResponse->LockState;
    my $ResourceTags        = $LockRuleResponse->ResourceTags;
    my $ResourceType        = $LockRuleResponse->ResourceType;
    my $RetentionPeriod     = $LockRuleResponse->RetentionPeriod;
    my $RuleArn             = $LockRuleResponse->RuleArn;
    my $Status              = $LockRuleResponse->Status;

    # Returns a L<Paws::Rbin::LockRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rbin/LockRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique ID of the retention rule.



=head2 B<REQUIRED> LockConfiguration => L<Paws::Rbin::LockConfiguration>

Information about the retention rule lock configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method LockRule in L<Paws::Rbin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

