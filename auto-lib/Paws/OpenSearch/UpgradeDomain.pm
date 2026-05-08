
package Paws::OpenSearch::UpgradeDomain;
  use Moose;
  has AdvancedOptions => (is => 'ro', isa => 'Paws::OpenSearch::AdvancedOptions');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has PerformCheckOnly => (is => 'ro', isa => 'Bool');
  has TargetVersion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpgradeDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/upgradeDomain');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::UpgradeDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpgradeDomain - Arguments for method UpgradeDomain on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpgradeDomain on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method UpgradeDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpgradeDomain.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $UpgradeDomainResponse = $es->UpgradeDomain(
      DomainName       => 'MyDomainName',
      TargetVersion    => 'MyVersionString',
      AdvancedOptions  => { 'MyString' => 'MyString', },    # OPTIONAL
      PerformCheckOnly => 1,                                # OPTIONAL
    );

    # Results:
    my $AdvancedOptions       = $UpgradeDomainResponse->AdvancedOptions;
    my $ChangeProgressDetails = $UpgradeDomainResponse->ChangeProgressDetails;
    my $DomainName            = $UpgradeDomainResponse->DomainName;
    my $PerformCheckOnly      = $UpgradeDomainResponse->PerformCheckOnly;
    my $TargetVersion         = $UpgradeDomainResponse->TargetVersion;
    my $UpgradeId             = $UpgradeDomainResponse->UpgradeId;

    # Returns a L<Paws::OpenSearch::UpgradeDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AdvancedOptions => L<Paws::OpenSearch::AdvancedOptions>

Only supports the C<override_main_response_version> parameter and not
other advanced options. You can only include this option when upgrading
to an OpenSearch version. Specifies whether the domain reports its
version as 7.10 so that it continues to work with Elasticsearch OSS
clients and plugins.



=head2 B<REQUIRED> DomainName => Str

Name of the OpenSearch Service domain that you want to upgrade.



=head2 PerformCheckOnly => Bool

When true, indicates that an upgrade eligibility check needs to be
performed. Does not actually perform the upgrade.



=head2 B<REQUIRED> TargetVersion => Str

OpenSearch or Elasticsearch version to which you want to upgrade, in
the format Opensearch_X.Y or Elasticsearch_X.Y.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpgradeDomain in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

