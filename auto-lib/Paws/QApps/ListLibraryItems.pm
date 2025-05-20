
package Paws::QApps::ListLibraryItems;
  use Moose;
  has CategoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'categoryId');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLibraryItems');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/catalog.list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::ListLibraryItemsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::ListLibraryItems - Arguments for method ListLibraryItems on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLibraryItems on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method ListLibraryItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLibraryItems.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $ListLibraryItemsOutput = $data . qapps->ListLibraryItems(
      InstanceId => 'MyInstanceId',
      CategoryId => 'MyUUID',               # OPTIONAL
      Limit      => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $LibraryItems = $ListLibraryItemsOutput->LibraryItems;
    my $NextToken    = $ListLibraryItemsOutput->NextToken;

    # Returns a L<Paws::QApps::ListLibraryItemsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/ListLibraryItems>

=head1 ATTRIBUTES


=head2 CategoryId => Str

Optional category to filter the library items by.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 Limit => Int

The maximum number of library items to return in the response.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLibraryItems in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

