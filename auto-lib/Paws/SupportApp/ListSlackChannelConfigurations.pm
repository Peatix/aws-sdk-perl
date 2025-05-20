
package Paws::SupportApp::ListSlackChannelConfigurations;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSlackChannelConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/control/list-slack-channel-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupportApp::ListSlackChannelConfigurationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp::ListSlackChannelConfigurations - Arguments for method ListSlackChannelConfigurations on L<Paws::SupportApp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSlackChannelConfigurations on the
L<AWS Support App|Paws::SupportApp> service. Use the attributes of this class
as arguments to method ListSlackChannelConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSlackChannelConfigurations.

=head1 SYNOPSIS

    my $supportapp = Paws->service('SupportApp');
    my $ListSlackChannelConfigurationsResult =
      $supportapp->ListSlackChannelConfigurations(
      NextToken => 'MypaginationToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListSlackChannelConfigurationsResult->NextToken;
    my $SlackChannelConfigurations =
      $ListSlackChannelConfigurationsResult->SlackChannelConfigurations;

   # Returns a L<Paws::SupportApp::ListSlackChannelConfigurationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/supportapp/ListSlackChannelConfigurations>

=head1 ATTRIBUTES


=head2 NextToken => Str

If the results of a search are large, the API only returns a portion of
the results and includes a C<nextToken> pagination token in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When the API returns the last
set of results, the response doesn't include a pagination token value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSlackChannelConfigurations in L<Paws::SupportApp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

