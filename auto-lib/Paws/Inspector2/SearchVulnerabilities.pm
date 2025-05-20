
package Paws::Inspector2::SearchVulnerabilities;
  use Moose;
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::SearchVulnerabilitiesFilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchVulnerabilities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vulnerabilities/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::SearchVulnerabilitiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::SearchVulnerabilities - Arguments for method SearchVulnerabilities on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchVulnerabilities on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method SearchVulnerabilities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchVulnerabilities.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $SearchVulnerabilitiesResponse = $inspector2->SearchVulnerabilities(
      FilterCriteria => {
        VulnerabilityIds => [ 'MyVulnId', ... ],    # min: 1, max: 1

      },
      NextToken => 'MyNextToken',                   # OPTIONAL
    );

    # Results:
    my $NextToken       = $SearchVulnerabilitiesResponse->NextToken;
    my $Vulnerabilities = $SearchVulnerabilitiesResponse->Vulnerabilities;

    # Returns a L<Paws::Inspector2::SearchVulnerabilitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/SearchVulnerabilities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilterCriteria => L<Paws::Inspector2::SearchVulnerabilitiesFilterCriteria>

The criteria used to filter the results of a vulnerability search.



=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the C<NextToken> value
returned from the previous request to continue listing results after
the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchVulnerabilities in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

