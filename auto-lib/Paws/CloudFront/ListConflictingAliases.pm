
package Paws::CloudFront::ListConflictingAliases;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', query_name => 'Alias', traits => ['ParamInQuery'], required => 1);
  has DistributionId => (is => 'ro', isa => 'Str', query_name => 'DistributionId', traits => ['ParamInQuery'], required => 1);
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Int', query_name => 'MaxItems', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConflictingAliases');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/conflicting-alias');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListConflictingAliasesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListConflictingAliases - Arguments for method ListConflictingAliases on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConflictingAliases2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListConflictingAliases2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConflictingAliases2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListConflictingAliasesResult = $cloudfront->ListConflictingAliases(
      Alias          => 'MyaliasString',
      DistributionId => 'MydistributionIdString',
      Marker         => 'Mystring',                 # OPTIONAL
      MaxItems       => 1,                          # OPTIONAL
    );

    # Results:
    my $ConflictingAliasesList =
      $ListConflictingAliasesResult->ConflictingAliasesList;

    # Returns a L<Paws::CloudFront::ListConflictingAliasesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListConflictingAliases>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alias => Str

The alias (also called a CNAME) to search for conflicting aliases.



=head2 B<REQUIRED> DistributionId => Str

The ID of a distribution in your account that has an attached SSL/TLS
certificate that includes the provided alias.



=head2 Marker => Str

Use this field when paginating results to indicate where to begin in
the list of conflicting aliases. The response includes conflicting
aliases in the list that occur after the marker. To get the next page
of the list, set this field's value to the value of C<NextMarker> from
the current page's response.



=head2 MaxItems => Int

The maximum number of conflicting aliases that you want in the
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConflictingAliases2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

