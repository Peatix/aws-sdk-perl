
package Paws::QBusiness::DeleteIndex;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::DeleteIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::DeleteIndex - Arguments for method DeleteIndex on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIndex on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method DeleteIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIndex.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $DeleteIndexResponse = $qbusiness->DeleteIndex(
      ApplicationId => 'MyApplicationId',
      IndexId       => 'MyIndexId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/DeleteIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application the Amazon Q
Business index is linked to.



=head2 B<REQUIRED> IndexId => Str

The identifier of the Amazon Q Business index.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIndex in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

