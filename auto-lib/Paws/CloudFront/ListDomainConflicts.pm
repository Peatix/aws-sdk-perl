
package Paws::CloudFront::ListDomainConflicts;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has DomainControlValidationResource => (is => 'ro', isa => 'Paws::CloudFront::DistributionResourceId', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomainConflicts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/domain-conflicts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListDomainConflictsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'ListDomainConflictsRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDomainConflicts - Arguments for method ListDomainConflicts on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomainConflicts2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListDomainConflicts2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDomainConflicts2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListDomainConflictsResult = $cloudfront->ListDomainConflicts(
      Domain                          => 'Mystring',
      DomainControlValidationResource => {
        DistributionId       => 'Mystring',
        DistributionTenantId => 'Mystring',
      },
      Marker   => 'Mystring',    # OPTIONAL
      MaxItems => 1,             # OPTIONAL
    );

    # Results:
    my $DomainConflicts = $ListDomainConflictsResult->DomainConflicts;
    my $NextMarker      = $ListDomainConflictsResult->NextMarker;

    # Returns a L<Paws::CloudFront::ListDomainConflictsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListDomainConflicts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The domain to check for conflicts.



=head2 B<REQUIRED> DomainControlValidationResource => L<Paws::CloudFront::DistributionResourceId>

The distribution resource identifier. This can be the distribution or
distribution tenant that has a valid certificate, which covers the
domain that you specify.



=head2 Marker => Str

The marker for the next set of domain conflicts.



=head2 MaxItems => Int

The maximum number of domain conflicts to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDomainConflicts2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

