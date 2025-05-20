
package Paws::CleanRoomsML::DeleteAudienceModel;
  use Moose;
  has AudienceModelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'audienceModelArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAudienceModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audience-model/{audienceModelArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::DeleteAudienceModel - Arguments for method DeleteAudienceModel on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAudienceModel on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method DeleteAudienceModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAudienceModel.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    $cleanrooms -ml->DeleteAudienceModel(
      AudienceModelArn => 'MyAudienceModelArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/DeleteAudienceModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceModelArn => Str

The Amazon Resource Name (ARN) of the audience model that you want to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAudienceModel in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

