
package Paws::AppConfig::ListHostedConfigurationVersions;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has ConfigurationProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationProfileId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max_results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next_token');
  has VersionLabel => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version_label');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHostedConfigurationVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::HostedConfigurationVersions');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ListHostedConfigurationVersions - Arguments for method ListHostedConfigurationVersions on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHostedConfigurationVersions on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method ListHostedConfigurationVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHostedConfigurationVersions.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
# To list the available hosted configuration versions
# The following list-hosted-configuration-versions example lists the
# configurations versions hosted in the AWS AppConfig hosted configuration store
# for the specified application and configuration profile.
    my $HostedConfigurationVersions =
      $appconfig->ListHostedConfigurationVersions(
      'ApplicationId'          => '339ohji',
      'ConfigurationProfileId' => 'ur8hx2f'
      );

    # Results:
    my $Items = $HostedConfigurationVersions->Items;

    # Returns a L<Paws::AppConfig::HostedConfigurationVersions> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/ListHostedConfigurationVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 B<REQUIRED> ConfigurationProfileId => Str

The configuration profile ID.



=head2 MaxResults => Int

The maximum number of items to return for this call. If C<MaxResults>
is not provided in the call, AppConfig returns the maximum of 50. The
call also returns a token that you can specify in a subsequent call to
get the next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 VersionLabel => Str

An optional filter that can be used to specify the version label of an
AppConfig hosted configuration version. This parameter supports
filtering by prefix using a wildcard, for example "v2*". If you don't
specify an asterisk at the end of the value, only an exact match is
returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHostedConfigurationVersions in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

