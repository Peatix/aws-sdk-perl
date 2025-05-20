
package Paws::QBusiness::ListPluginTypeActions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PluginType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'pluginType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPluginTypeActions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pluginTypes/{pluginType}/actions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::ListPluginTypeActionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListPluginTypeActions - Arguments for method ListPluginTypeActions on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPluginTypeActions on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method ListPluginTypeActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPluginTypeActions.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $ListPluginTypeActionsResponse = $qbusiness->ListPluginTypeActions(
      PluginType => 'SERVICE_NOW',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListPluginTypeActionsResponse->Items;
    my $NextToken = $ListPluginTypeActionsResponse->NextToken;

    # Returns a L<Paws::QBusiness::ListPluginTypeActionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/ListPluginTypeActions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of plugins to return.



=head2 NextToken => Str

If the number of plugins returned exceeds C<maxResults>, Amazon Q
Business returns a next token as a pagination token to retrieve the
next set of plugins.



=head2 B<REQUIRED> PluginType => Str

The type of the plugin.

Valid values are: C<"SERVICE_NOW">, C<"SALESFORCE">, C<"JIRA">, C<"ZENDESK">, C<"CUSTOM">, C<"QUICKSIGHT">, C<"SERVICENOW_NOW_PLATFORM">, C<"JIRA_CLOUD">, C<"SALESFORCE_CRM">, C<"ZENDESK_SUITE">, C<"ATLASSIAN_CONFLUENCE">, C<"GOOGLE_CALENDAR">, C<"MICROSOFT_TEAMS">, C<"MICROSOFT_EXCHANGE">, C<"PAGERDUTY_ADVANCE">, C<"SMARTSHEET">, C<"ASANA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPluginTypeActions in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

