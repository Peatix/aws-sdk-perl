
package Paws::Outposts::ListCatalogItems;
  use Moose;
  has EC2FamilyFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'EC2FamilyFilter');
  has ItemClassFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'ItemClassFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has SupportedStorageFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'SupportedStorageFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCatalogItems');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/catalog/items');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::ListCatalogItemsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListCatalogItems - Arguments for method ListCatalogItems on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCatalogItems on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method ListCatalogItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCatalogItems.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $ListCatalogItemsOutput = $outposts->ListCatalogItems(
      EC2FamilyFilter => [
        'MyFamily', ...    # min: 1, max: 10
      ],    # OPTIONAL
      ItemClassFilter => [
        'RACK', ...    # values: RACK, SERVER
      ],    # OPTIONAL
      MaxResults             => 1,            # OPTIONAL
      NextToken              => 'MyToken',    # OPTIONAL
      SupportedStorageFilter => [
        'EBS', ...                            # values: EBS, S3
      ],    # OPTIONAL
    );

    # Results:
    my $CatalogItems = $ListCatalogItemsOutput->CatalogItems;
    my $NextToken    = $ListCatalogItemsOutput->NextToken;

    # Returns a L<Paws::Outposts::ListCatalogItemsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/ListCatalogItems>

=head1 ATTRIBUTES


=head2 EC2FamilyFilter => ArrayRef[Str|Undef]

Filters the results by EC2 family (for example, M5).



=head2 ItemClassFilter => ArrayRef[Str|Undef]

Filters the results by item class.



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 SupportedStorageFilter => ArrayRef[Str|Undef]

Filters the results by storage option.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCatalogItems in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

