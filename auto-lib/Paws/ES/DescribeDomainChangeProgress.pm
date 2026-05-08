
package Paws::ES::DescribeDomainChangeProgress;
  use Moose;
  has ChangeId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'changeid');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomainChangeProgress');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/domain/{DomainName}/progress');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::DescribeDomainChangeProgressResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeDomainChangeProgress - Arguments for method DescribeDomainChangeProgress on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDomainChangeProgress on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method DescribeDomainChangeProgress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDomainChangeProgress.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $DescribeDomainChangeProgressResponse =
      $es->DescribeDomainChangeProgress(
      DomainName => 'MyDomainName',
      ChangeId   => 'MyGUID',         # OPTIONAL
      );

    # Results:
    my $ChangeProgressStatus =
      $DescribeDomainChangeProgressResponse->ChangeProgressStatus;

    # Returns a L<Paws::ES::DescribeDomainChangeProgressResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 ChangeId => Str

The specific change ID for which you want to get progress information.
This is an optional parameter. If omitted, the service returns
information about the most recent configuration change.



=head2 B<REQUIRED> DomainName => Str

The domain you want to get the progress information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDomainChangeProgress in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

