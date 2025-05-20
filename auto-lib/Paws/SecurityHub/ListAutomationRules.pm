
package Paws::SecurityHub::ListAutomationRules;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAutomationRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/automationrules/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::ListAutomationRulesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListAutomationRules - Arguments for method ListAutomationRules on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAutomationRules on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method ListAutomationRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAutomationRules.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $ListAutomationRulesResponse = $securityhub->ListAutomationRules(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AutomationRulesMetadata =
      $ListAutomationRulesResponse->AutomationRulesMetadata;
    my $NextToken = $ListAutomationRulesResponse->NextToken;

    # Returns a L<Paws::SecurityHub::ListAutomationRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/ListAutomationRules>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of rules to return in the response. This currently
ranges from 1 to 100.



=head2 NextToken => Str

A token to specify where to start paginating the response. This is the
C<NextToken> from a previously truncated response. On your first call
to the C<ListAutomationRules> API, set the value of this parameter to
C<NULL>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAutomationRules in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

