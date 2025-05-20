
package Paws::MailManager::GetRuleSet;
  use Moose;
  has RuleSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRuleSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::GetRuleSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetRuleSet - Arguments for method GetRuleSet on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRuleSet on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method GetRuleSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRuleSet.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $GetRuleSetResponse = $mail -manager->GetRuleSet(
      RuleSetId => 'MyRuleSetId',

    );

    # Results:
    my $CreatedDate          = $GetRuleSetResponse->CreatedDate;
    my $LastModificationDate = $GetRuleSetResponse->LastModificationDate;
    my $RuleSetArn           = $GetRuleSetResponse->RuleSetArn;
    my $RuleSetId            = $GetRuleSetResponse->RuleSetId;
    my $RuleSetName          = $GetRuleSetResponse->RuleSetName;
    my $Rules                = $GetRuleSetResponse->Rules;

    # Returns a L<Paws::MailManager::GetRuleSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/GetRuleSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleSetId => Str

The identifier of an existing rule set to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRuleSet in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

