
package Paws::Rbin::GetRule;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rbin::GetRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rbin::GetRule - Arguments for method GetRule on L<Paws::Rbin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRule on the
L<Amazon Recycle Bin|Paws::Rbin> service. Use the attributes of this class
as arguments to method GetRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRule.

=head1 SYNOPSIS

    my $rbin = Paws->service('Rbin');
    my $GetRuleResponse = $rbin->GetRule(
      Identifier => 'MyRuleIdentifier',

    );

    # Results:
    my $Description         = $GetRuleResponse->Description;
    my $ExcludeResourceTags = $GetRuleResponse->ExcludeResourceTags;
    my $Identifier          = $GetRuleResponse->Identifier;
    my $LockConfiguration   = $GetRuleResponse->LockConfiguration;
    my $LockEndTime         = $GetRuleResponse->LockEndTime;
    my $LockState           = $GetRuleResponse->LockState;
    my $ResourceTags        = $GetRuleResponse->ResourceTags;
    my $ResourceType        = $GetRuleResponse->ResourceType;
    my $RetentionPeriod     = $GetRuleResponse->RetentionPeriod;
    my $RuleArn             = $GetRuleResponse->RuleArn;
    my $Status              = $GetRuleResponse->Status;

    # Returns a L<Paws::Rbin::GetRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rbin/GetRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique ID of the retention rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRule in L<Paws::Rbin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

